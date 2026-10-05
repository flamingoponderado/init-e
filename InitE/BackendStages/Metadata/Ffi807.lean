import InitE.BackendStages.Metadata.Data807
import InitE.BackendStages.Filtered807
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis807_eq : ffiLines Filtered807.lines = localFfis807 := by
  with_unfolding_all rfl
theorem ffiStep807 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis807) : LabToTarget.findFfiNames (Filtered807 :: rest) = suffixFfis807 := by
  rw [findFfiNames_section, localFfis807_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep807
end InitE.BackendStages.Metadata
