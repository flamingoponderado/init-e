import InitE.BackendStages.Metadata.Data160
import InitE.BackendStages.Filtered160
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis160_eq : ffiLines Filtered160.lines = localFfis160 := by
  with_unfolding_all rfl
theorem ffiStep160 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis160) : LabToTarget.findFfiNames (Filtered160 :: rest) = suffixFfis160 := by
  rw [findFfiNames_section, localFfis160_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep160
end InitE.BackendStages.Metadata
