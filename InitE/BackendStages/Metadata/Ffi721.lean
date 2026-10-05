import InitE.BackendStages.Metadata.Data721
import InitE.BackendStages.Filtered721
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis721_eq : ffiLines Filtered721.lines = localFfis721 := by
  with_unfolding_all rfl
theorem ffiStep721 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis721) : LabToTarget.findFfiNames (Filtered721 :: rest) = suffixFfis721 := by
  rw [findFfiNames_section, localFfis721_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep721
end InitE.BackendStages.Metadata
