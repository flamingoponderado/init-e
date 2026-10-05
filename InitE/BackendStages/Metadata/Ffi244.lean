import InitE.BackendStages.Metadata.Data244
import InitE.BackendStages.Filtered244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis244_eq : ffiLines Filtered244.lines = localFfis244 := by
  with_unfolding_all rfl
theorem ffiStep244 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis244) : LabToTarget.findFfiNames (Filtered244 :: rest) = suffixFfis244 := by
  rw [findFfiNames_section, localFfis244_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep244
end InitE.BackendStages.Metadata
