import InitE.BackendStages.Metadata.Data411
import InitE.BackendStages.Filtered411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis411_eq : ffiLines Filtered411.lines = localFfis411 := by
  with_unfolding_all rfl
theorem ffiStep411 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis411) : LabToTarget.findFfiNames (Filtered411 :: rest) = suffixFfis411 := by
  rw [findFfiNames_section, localFfis411_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep411
end InitE.BackendStages.Metadata
