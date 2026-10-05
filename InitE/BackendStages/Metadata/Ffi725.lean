import InitE.BackendStages.Metadata.Data725
import InitE.BackendStages.Filtered725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis725_eq : ffiLines Filtered725.lines = localFfis725 := by
  with_unfolding_all rfl
theorem ffiStep725 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis725) : LabToTarget.findFfiNames (Filtered725 :: rest) = suffixFfis725 := by
  rw [findFfiNames_section, localFfis725_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep725
end InitE.BackendStages.Metadata
