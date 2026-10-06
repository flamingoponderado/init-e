import InitE.BackendStages.Metadata.Data219
import InitE.BackendStages.Filtered219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis219_eq : ffiLines Filtered219.lines = localFfis219 := by
  with_unfolding_all rfl
theorem ffiStep219 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis219) : LabToTarget.findFfiNames (Filtered219 :: rest) = suffixFfis219 := by
  rw [findFfiNames_section, localFfis219_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep219
end InitE.BackendStages.Metadata
