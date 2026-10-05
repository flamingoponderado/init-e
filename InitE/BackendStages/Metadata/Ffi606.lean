import InitE.BackendStages.Metadata.Data606
import InitE.BackendStages.Filtered606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis606_eq : ffiLines Filtered606.lines = localFfis606 := by
  with_unfolding_all rfl
theorem ffiStep606 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis606) : LabToTarget.findFfiNames (Filtered606 :: rest) = suffixFfis606 := by
  rw [findFfiNames_section, localFfis606_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep606
end InitE.BackendStages.Metadata
