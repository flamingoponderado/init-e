import InitE.BackendStages.Metadata.Data277
import InitE.BackendStages.Filtered277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis277_eq : ffiLines Filtered277.lines = localFfis277 := by
  with_unfolding_all rfl
theorem ffiStep277 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis277) : LabToTarget.findFfiNames (Filtered277 :: rest) = suffixFfis277 := by
  rw [findFfiNames_section, localFfis277_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep277
end InitE.BackendStages.Metadata
