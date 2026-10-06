import InitE.BackendStages.Metadata.Data790
import InitE.BackendStages.Filtered790
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis790_eq : ffiLines Filtered790.lines = localFfis790 := by
  with_unfolding_all rfl
theorem ffiStep790 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis790) : LabToTarget.findFfiNames (Filtered790 :: rest) = suffixFfis790 := by
  rw [findFfiNames_section, localFfis790_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep790
end InitE.BackendStages.Metadata
