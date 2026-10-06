import InitE.BackendStages.Metadata.Data453
import InitE.BackendStages.Filtered453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis453_eq : ffiLines Filtered453.lines = localFfis453 := by
  with_unfolding_all rfl
theorem ffiStep453 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis453) : LabToTarget.findFfiNames (Filtered453 :: rest) = suffixFfis453 := by
  rw [findFfiNames_section, localFfis453_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep453
end InitE.BackendStages.Metadata
