import InitE.BackendStages.Metadata.Data214
import InitE.BackendStages.Filtered214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis214_eq : ffiLines Filtered214.lines = localFfis214 := by
  with_unfolding_all rfl
theorem ffiStep214 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis214) : LabToTarget.findFfiNames (Filtered214 :: rest) = suffixFfis214 := by
  rw [findFfiNames_section, localFfis214_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep214
end InitE.BackendStages.Metadata
