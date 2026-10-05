import InitE.BackendStages.Metadata.Data230
import InitE.BackendStages.Filtered230
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis230_eq : ffiLines Filtered230.lines = localFfis230 := by
  with_unfolding_all rfl
theorem ffiStep230 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis230) : LabToTarget.findFfiNames (Filtered230 :: rest) = suffixFfis230 := by
  rw [findFfiNames_section, localFfis230_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep230
end InitE.BackendStages.Metadata
