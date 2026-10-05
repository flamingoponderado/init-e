import InitE.BackendStages.Metadata.Data105
import InitE.BackendStages.Filtered105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis105_eq : ffiLines Filtered105.lines = localFfis105 := by
  with_unfolding_all rfl
theorem ffiStep105 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis105) : LabToTarget.findFfiNames (Filtered105 :: rest) = suffixFfis105 := by
  rw [findFfiNames_section, localFfis105_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep105
end InitE.BackendStages.Metadata
