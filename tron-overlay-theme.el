;;; tron-overlay.el --- Tron overlay for Cyberpunk Colour Theme

;; Copyright 2015, Benjamin Slade

;; Author: Benjamin Slade <slade@jnanam.net>
;; Keywords: color theme cybertron tron cyberpunk
;; Version: 0.1

;; Tron overlay for the cyberpunk theme (by Nicholas M. Van Horn <vanhorn.nm@gmail.com>)

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;

;;; Commentary:

;; Tweak cyberpunk theme colours slightly.

(deftheme tron-overlay "Tron overlay for Cyberpunk Colour Theme")


(let ((class '((class color) (min-colors 89)))
      ;; Tron palette - many colours are actually the same as the cyberpunk colours
;;    (tron-blue "#9AD5E9")
;;    (tron-blue "#c4ecf4")
      (tron-blue "#c5ecfb") ;; ENCOM blue
      (mcp-red "#b13223") ;; MCP red
      (pane-blue "#E6FFFF")
      (tron-orange-1 "#ff8c00") ;; DarkOrange
      (recogniser-yellow "#FFE64D") ; recogniser yellow 
      (cybertron-fg "#dcdccc")
      (cybertron-bg-1 "#2b2b2b")
      (cybertron-bg-05 "#383838")
      (cybertron-bg "#000000")
      (cybertron-bg+1 "#4f4f4f")
      (cybertron-bg+2 "#5f5f5f")
      (cybertron-bg+3 "#6f6f6f")
      (cybertron-red+1 "#dca3a3")
      (cybertron-red "#ff0000")
      (cybertron-red-1 "#DF740C")
      (cybertron-red-2 "#DF740C")
      (cybertron-red-3 "#9c6363")
      (cybertron-red-4 "#8c5353")
      (cybertron-red-5 "#7F073F")
      (cybertron-red-6 "#ff4040")
      (cybertron-pink "#ff69b4")
      (cybertron-pink-1 "#ff1493")
      (cybertron-pink-2 "#cd1076")
      (cybertron-orange-2 "#FF6400")
      (cybertron-orange-1 "#ff8c00") ;; DarkOrange
      (cybertron-orange "#ffa500")
      (cybertron-yellow "#ffff00")
      (cybertron-yellow-1 "#FBDE2D") ; recogniser yellow
      (cybertron-yellow-2 "#d0bf8f")
      (cybertron-yellow-3 "#D8FA3C")
      (cybertron-yellow-4 "#E9C062")
      (cybertron-yellow-5 "#FFE64D")
      (cybertron-gold-1 "#33331A")
      (cybertron-green-2 "#006400")
      (cybertron-green-1 "#2e8b57")
      (cybertron-green "#00ff00")
      (cybertron-green+1 "#61CE3C")
      (cybertron-green+2 "#9fc59f")
      (cybertron-green+3 "#afd8af")
      (cybertron-green+4 "#bfebbf")
      (cybertron-cyan "#93e0e3")
      (cybertron-blue+1 "#94bff3")
      (cybertron-blue+2 "#66a3ff")
      (cybertron-blue "#3C65F9")    ;; blue
      (cybertron-blue-1 "#7b68ee")  ;; medium slate blue
      (cybertron-blue-2 "#6a5acd")  ;; slate blue
      (cybertron-blue-3 "#add8e6")  ;; light blue
      (cybertron-blue-4 "#b2dfee")  ;; LightBlue2
      (cybertron-blue-5 "#4c83ff")
      (cybertron-blue-6 "#96CBFE")
      (cybertron-blue-7 "#00ffff")
      (cybertron-magenta "#dc8cc3")
      (cybertron-black "#000000")
      (cybertron-black-2 "#0C1021")
      (cybertron-black-3 "#0A0A0A")
      (cybertron-grey "#d3d3d3")
      (cybertron-grey-2 "#8B8989")
      (cybertron-grey-3 "#919191")
      (cybertron-grey-4 "#999999")
      (cybertron-grey-5 "#333333")
      (cybertron-grey-6 "#1A1A1A")
      (cybertron-grey-7 "#4D4D4D")
      (cybertron-grey-8 "#262626")
      (cybertron-white "#ffffff")
      (cybertron-white-2 "#F8F8F8")
      (cybertron-white-3 "#fffafa")
)
      
 (custom-theme-set-faces
  'tron-overlay
  `(default ((,class (:foreground ,tron-blue :background ,cybertron-black))))   ;;; change default text colour from cyberpunk greyish
                                                                                ;;; good for distinction between text & commment
                                                                                ;;; also matches colour used in Tron http://jtnimoy.com/blogs/projects/14881671

 `(region ((,class (:foreground ,cybertron-black :background ,recogniser-yellow))))  ;;; change highlight to recogniser-yellow
  
;; `(region ((,class (:foreground ,cybertron-black :background ,cybertron-yellow-5))))
 


  ;;  `(cursor ((,class (:background ,cyberpunk-fg))))

   `(font-lock-keyword-face ((,class (:foreground ,recogniser-yellow))))

      `(flymake-warnline
     ((,(append '((supports :underline (:style wave))) class)
       (:underline (:style wave :color ,cybertron-yellow-1) :inherit unspecified
                   :foreground unspecified :background unspecified))
      (,class (:foreground ,cybertron-orange-1 :background ,cybertron-yellow-1 :weight bold :underline t))))

     ;; flycheck
     `(flycheck-error
       ((,(append '((supports :underline (:style wave))) class)
         (:underline (:style wave :color ,cybertron-red-1) :inherit unspecified))
        (,class (:foreground ,cybertron-red-5 :background ,cybertron-pink :weight bold :underline t))))
     `(flycheck-warning
       ((,(append '((supports :underline (:style wave))) class)
         (:underline (:style wave :color ,cybertron-yellow-1) :inherit unspecified))
        (,class (:foreground ,cybertron-orange-1 :background ,cybertron-yellow-1 :weight bold :underline t))))
     `(flycheck-fringe-error
       ((,class (:foreground ,cybertron-red-5 :background ,cybertron-pink :weight bold))))
     `(flycheck-fringe-warning
       ((,class (:foreground ,cybertron-orange-1 :background ,cybertron-yellow-1 :weight bold))))

     ;; search
        `(isearch ((,class (:foreground ,cybertron-black :background ,recogniser-yellow))))
        `(isearch-fail ((,class (:background ,mcp-red))))
        `(lazy-highlight ((,class (:foreground ,cybertron-black :background ,tron-orange-1))))

;; org-mode
      `(org-agenda-calendar-event ((,class (:inherit default :foreground ,cybertron-blue+2))))
      `(org-agenda-calendar-sexp ((,class (:inherit default :foreground ,cybertron-blue+2))))

;; gnus      
      `(gnus-summary-normal-unread ((,class (:foreground ,cybertron-green))))
      `(gnus-summary-high-unread ((,class (:foreground ,cybertron-green))))
      `(gnus-summary-low-unread ((,class (:foreground ,cybertron-green))))      

      `(gnus-summary-normal-read ((,class (:foreground ,cybertron-grey))))
      `(gnus-summary-high-read ((,class (:foreground ,cybertron-grey))))
      `(gnus-summary-low-read ((,class (:foreground ,cybertron-grey))))                                                                    
  )

  )
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tron-overlay)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; tron-overlay.el ends here.
