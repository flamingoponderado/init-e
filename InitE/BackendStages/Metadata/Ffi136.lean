import InitE.BackendStages.Metadata.Data136
import InitE.BackendStages.Filtered136
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis136_eq : ffiLines Filtered136.lines = localFfis136 := by
  with_unfolding_all rfl
theorem ffiStep136 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis136) : LabToTarget.findFfiNames (Filtered136 :: rest) = suffixFfis136 := by
  rw [findFfiNames_section, localFfis136_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep136
end InitE.BackendStages.Metadata
