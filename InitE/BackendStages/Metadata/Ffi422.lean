import InitE.BackendStages.Metadata.Data422
import InitE.BackendStages.Filtered422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis422_eq : ffiLines Filtered422.lines = localFfis422 := by
  with_unfolding_all rfl
theorem ffiStep422 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis422) : LabToTarget.findFfiNames (Filtered422 :: rest) = suffixFfis422 := by
  rw [findFfiNames_section, localFfis422_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep422
end InitE.BackendStages.Metadata
