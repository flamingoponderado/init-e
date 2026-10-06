import InitE.BackendStages.Metadata.Data81
import InitE.BackendStages.Filtered81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis81_eq : ffiLines Filtered81.lines = localFfis81 := by
  with_unfolding_all rfl
theorem ffiStep81 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis81) : LabToTarget.findFfiNames (Filtered81 :: rest) = suffixFfis81 := by
  rw [findFfiNames_section, localFfis81_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep81
end InitE.BackendStages.Metadata
