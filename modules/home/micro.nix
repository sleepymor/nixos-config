{ pkgs, ... }:
{
  programs.micro = {
    enable = true;

    settings = {
      "colorscheme" = "ayu-dark";
      "*.nix" = {
        "tabsize" = 2;
      };
      "*.ml" = {
        "tabsize" = 2;
      };
      "makefile" = {
        "tabstospaces" = false;
      };
      "tabstospaces" = true;
      "tabsize" = 4;
      "mkparents" = true;
      "colorcolumn" = 80;
    };
  };

  xdg.configFile."micro/bindings.json".text = ''
    {
      "Ctrl-Up": "CursorUp,CursorUp,CursorUp,CursorUp,CursorUp",
      "Ctrl-Down": "CursorDown,CursorDown,CursorDown,CursorDown,CursorDown",
      "Ctrl-Backspace": "DeleteWordLeft",
      "Ctrl-Delete": "DeleteWordRight",
      "CtrlShiftUp": "ScrollUp,ScrollUp,ScrollUp,ScrollUp,ScrollUp",
      "CtrlShiftDown": "ScrollDown,ScrollDown,ScrollDown,ScrollDown,ScrollDown"
    }
  '';

  xdg.configFile."micro/colorschemes/ayu-dark.micro".text = ''
color-link default "#B3B1AD"       
color-link comment "#5C6773"       
color-link symbol "#F29718"        
color-link constant "#DCC6E0"      
color-link constant.string "#86B300" 
color-link constant.string.char "#86B300" 
color-link identifier "#59C2FF"    
color-link statement "#FF7733"     
color-link preproc "#FF7733,235"   
color-link type "#E6B450"          
color-link special "#FFCC66"       
color-link underlined "underline #6C7986" 
color-link error "#FF3333"         
color-link hlsearch "#2C313C,#FFCC66" 
color-link diff-added "#86B300"    
color-link diff-modified "#E6B450" 
color-link diff-deleted "#F07178"  
color-link gutter-error "#FF3333"  
color-link gutter-warning "#FFCC66" 
color-link line-number "#4E5665"   
color-link current-line-number "#A2AAB8" 
color-link cursor-line "#0E1013"   
color-link color-column "#323945"  
color-link statusline "#4E5665"    
color-link tabbar "#2C313C,#4E5665" 
color-link type "#E6B450"           
color-link todo "#FFCC66"          

  '';
}
