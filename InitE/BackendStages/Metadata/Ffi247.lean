import InitE.BackendStages.Metadata.Data247
import InitE.BackendStages.Filtered247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis247_eq : ffiLines Filtered247.lines = localFfis247 := by
  with_unfolding_all rfl
theorem ffiStep247 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis247) : LabToTarget.findFfiNames (Filtered247 :: rest) = suffixFfis247 := by
  rw [findFfiNames_section, localFfis247_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep247
end InitE.BackendStages.Metadata
