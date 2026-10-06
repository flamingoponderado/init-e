import InitE.BackendStages.Metadata.Data385
import InitE.BackendStages.Filtered385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis385_eq : ffiLines Filtered385.lines = localFfis385 := by
  with_unfolding_all rfl
theorem ffiStep385 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis385) : LabToTarget.findFfiNames (Filtered385 :: rest) = suffixFfis385 := by
  rw [findFfiNames_section, localFfis385_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep385
end InitE.BackendStages.Metadata
