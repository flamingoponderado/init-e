import InitE.BackendStages.Metadata.Data371
import InitE.BackendStages.Filtered371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis371_eq : ffiLines Filtered371.lines = localFfis371 := by
  with_unfolding_all rfl
theorem ffiStep371 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis371) : LabToTarget.findFfiNames (Filtered371 :: rest) = suffixFfis371 := by
  rw [findFfiNames_section, localFfis371_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep371
end InitE.BackendStages.Metadata
