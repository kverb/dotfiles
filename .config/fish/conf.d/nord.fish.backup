      set -l base00  2E3440
      set -l base01  3B4252
      set -l base02  434C5E
      set -l base03  4C566A
      set -l base04  D8DEE9
      set -l base05  E5E9F0
      set -l base06  ECEFF4
      set -l base07  8FBCBB
      set -l base08  88C0D0
      set -l base09  81A1C1
      set -l base0A  5E81AC
      set -l base0B  BF616A
      set -l base0C  D08770
      set -l base0D  EBCB8B
      set -l base0E  A3BE8C
      set -l base0F  B48EAD

      set -l colorfg $base00

      set -x color_initial_segment_exit     $base05 $base0B --bold
      set -x color_initial_segment_private  $base05 $base02
      set -x color_initial_segment_su       $base05 $base0E --bold
      set -x color_initial_segment_jobs     $base05 $base0C --bold

      set -x color_path                     $base02 $base05
      set -x color_path_basename            $base02 $base06 --bold
      set -x color_path_nowrite             $base02 $base08
      set -x color_path_nowrite_basename    $base02 $base08 --bold

      set -x color_repo                     $base0E $colorfg
      set -x color_repo_work_tree           $base02 $colorfg --bold
      set -x color_repo_dirty               $base0B $colorfg
      set -x color_repo_staged              $base0D $colorfg

      set -x color_vi_mode_default          $base08 $colorfg --bold
      set -x color_vi_mode_insert           $base06 $colorfg --bold
      set -x color_vi_mode_visual           $base07 $colorfg --bold

      set -x color_vagrant                  $base02 $colorfg --bold
      set -x color_k8s                      $base02 $colorfg --bold
      set -x color_aws_vault                $base0A $base0D --bold
      set -x color_aws_vault_expired        $base0A $base0B --bold
      set -x color_username                 $base02 $base0D --bold
      set -x color_hostname                 $base02 $base0D
      set -x color_rvm                      $base09 $colorfg --bold
      set -x color_node                     $base09 $colorfg --bold
      set -x color_virtualfish              $base09 $colorfg --bold
      set -x color_virtualgo                $base09 $colorfg --bold
      set -x color_desk                     $base09 $colorfg --bold
