import InitE.BackendStages.Metadata.Data809
import InitE.BackendStages.Filtered809
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis809_eq : ffiLines Filtered809.lines = localFfis809 := by
  with_unfolding_all rfl
theorem ffiStep809 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis809) : LabToTarget.findFfiNames (Filtered809 :: rest) = suffixFfis809 := by
  rw [findFfiNames_section, localFfis809_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep809
end InitE.BackendStages.Metadata
