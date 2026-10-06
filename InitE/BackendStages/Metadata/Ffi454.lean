import InitE.BackendStages.Metadata.Data454
import InitE.BackendStages.Filtered454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis454_eq : ffiLines Filtered454.lines = localFfis454 := by
  with_unfolding_all rfl
theorem ffiStep454 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis454) : LabToTarget.findFfiNames (Filtered454 :: rest) = suffixFfis454 := by
  rw [findFfiNames_section, localFfis454_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep454
end InitE.BackendStages.Metadata
