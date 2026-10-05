import InitE.BackendStages.Metadata.Data316
import InitE.BackendStages.Filtered316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis316_eq : ffiLines Filtered316.lines = localFfis316 := by
  with_unfolding_all rfl
theorem ffiStep316 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis316) : LabToTarget.findFfiNames (Filtered316 :: rest) = suffixFfis316 := by
  rw [findFfiNames_section, localFfis316_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep316
end InitE.BackendStages.Metadata
