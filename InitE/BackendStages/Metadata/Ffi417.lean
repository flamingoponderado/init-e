import InitE.BackendStages.Metadata.Data417
import InitE.BackendStages.Filtered417
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis417_eq : ffiLines Filtered417.lines = localFfis417 := by
  with_unfolding_all rfl
theorem ffiStep417 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis417) : LabToTarget.findFfiNames (Filtered417 :: rest) = suffixFfis417 := by
  rw [findFfiNames_section, localFfis417_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep417
end InitE.BackendStages.Metadata
