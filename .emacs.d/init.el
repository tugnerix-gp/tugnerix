;; 1. Emacs sagen, dass die look.el die offizielle Customize-Datei ist
(setq custom-file "~/.emacs.d/look.el")

;; 2. Diese Datei jetzt sofort laden
(load custom-file)


;; --- PAKETMANAGER ---
(require 'package)
;; Der Pfad ist im Code um "/packages/" erweitert
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; --- AUTOMATISCHE INSTALLATION VON MAGIT ---
;; Wenn Magit noch nicht installiert ist, lade die Liste neu und installiere es
;(unless (package-installed-p 'magit)
;  (message "Magit wird installiert, bitte warten...")
;  (package-refresh-contents)
;  (package-install 'magit))

;; --- OPTIK ---
(setq inhibit-startup-message t) ; Startbildschirm überspringen
;;(tool-bar-mode -1)               ; Werkzeugleiste aus
;;(menu-bar-mode -1)               ; Menüleiste aus
;;(scroll-bar-mode -1)             ; Scrollleiste aus
(global-display-line-numbers-mode t) ; Zeilennummern an

;; --- EDITIEREN ---
(electric-pair-mode 1)           ; Klammern automatisch schließen
(show-paren-mode 1)              ; Zusammengehörige Klammern anzeigen
(setq make-backup-files nil)     ; Keine Backup-Dateien (~*) erstellen

;; =======================================================
;; EIGENE EINSTELLUNGEN: TABS, SPACES & C/C++
;; =======================================================

;; 1. Global auf Spaces statt Tabs umstellen
(setq-default indent-tabs-mode nil) ; Verhindert die Nutzung von echten Tab-Zeichen
(setq-default tab-width 4)          ; Definiert die Standard-Tabulatorbreite als 4 Spaces

;; 2. C und C++ spezifische Formatierung (4 Spaces Einrückung)
(setq-default c-basic-offset 4)     ; Setzt die Einrückung in C/C++ auf 4 Spaces
(c-set-offset 'substatement-open 0) ; Verhindert das zusätzliche Einrücken von geschweiften Klammern

;; 3. Syntax-Highlighting aktivieren
(global-font-lock-mode t)           ; Aktiviert das Syntax-Highlighting für alle Programmiersprachen

;; 4. Automatisches Einrücken beim Drücken von ENTER
(global-set-key (kbd "RET") 'newline-and-indent)

;; 4. Modernes clang-format (sucht nach .clang-format Dateien)
(defun mein-c-beautify ()
  "Formatiert den aktuellen Buffer kontrolliert mit clang-format."
  (interactive)
  (if (executable-find "clang-format")
      (let ((b-point (point)))
        ;; Erläuterung der Argumente:
        ;; -style=file          -> Sucht im Ordner (und allen übergeordneten Ordnern) nach einer .clang-format Datei
        ;; -fallback-style=...  -> Wenn KEINE Datei gefunden wird, nimm diese 4-Spaces-Regel
        (shell-command-on-region (point-min) 
                                 (point-max) 
                                 "clang-format -style=file -fallback-style=\"{BasedOnStyle: llvm, IndentWidth: 4, UseTab: Never}\"" 
                                 nil 
                                 t)
        (goto-char b-point)
        (message "Code erfolgreich mit clang-format aufgeräumt!"))
    (error "Fehler: 'clang-format' ist nicht auf Ihrem Debian-System installiert!")))

;; Bindet die Funktion an den Hotkey: Strg + c und danach b (Beautify)
(global-set-key (kbd "C-c b") 'mein-c-beautify)

;; --- MAGIT CONFIG ---
;; Aktiviert den globalen Shortcut: Strg+x gefolgt von g
(global-set-key (kbd "C-x g") 'magit-status)

