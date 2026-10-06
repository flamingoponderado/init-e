import InitE.BackendStages.Metadata.Data358
import InitE.BackendStages.Filtered358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis358_eq : ffiLines Filtered358.lines = localFfis358 := by
  with_unfolding_all rfl
theorem ffiStep358 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis358) : LabToTarget.findFfiNames (Filtered358 :: rest) = suffixFfis358 := by
  rw [findFfiNames_section, localFfis358_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep358
end InitE.BackendStages.Metadata
