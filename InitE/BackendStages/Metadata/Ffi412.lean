import InitE.BackendStages.Metadata.Data412
import InitE.BackendStages.Filtered412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis412_eq : ffiLines Filtered412.lines = localFfis412 := by
  with_unfolding_all rfl
theorem ffiStep412 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis412) : LabToTarget.findFfiNames (Filtered412 :: rest) = suffixFfis412 := by
  rw [findFfiNames_section, localFfis412_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep412
end InitE.BackendStages.Metadata
