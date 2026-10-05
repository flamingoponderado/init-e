import InitE.BackendStages.Metadata.Data735
import InitE.BackendStages.Filtered735
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis735_eq : ffiLines Filtered735.lines = localFfis735 := by
  with_unfolding_all rfl
theorem ffiStep735 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis735) : LabToTarget.findFfiNames (Filtered735 :: rest) = suffixFfis735 := by
  rw [findFfiNames_section, localFfis735_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep735
end InitE.BackendStages.Metadata
