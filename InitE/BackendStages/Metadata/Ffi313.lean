import InitE.BackendStages.Metadata.Data313
import InitE.BackendStages.Filtered313
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis313_eq : ffiLines Filtered313.lines = localFfis313 := by
  with_unfolding_all rfl
theorem ffiStep313 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis313) : LabToTarget.findFfiNames (Filtered313 :: rest) = suffixFfis313 := by
  rw [findFfiNames_section, localFfis313_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep313
end InitE.BackendStages.Metadata
