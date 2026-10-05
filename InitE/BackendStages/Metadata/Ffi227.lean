import InitE.BackendStages.Metadata.Data227
import InitE.BackendStages.Filtered227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis227_eq : ffiLines Filtered227.lines = localFfis227 := by
  with_unfolding_all rfl
theorem ffiStep227 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis227) : LabToTarget.findFfiNames (Filtered227 :: rest) = suffixFfis227 := by
  rw [findFfiNames_section, localFfis227_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep227
end InitE.BackendStages.Metadata
