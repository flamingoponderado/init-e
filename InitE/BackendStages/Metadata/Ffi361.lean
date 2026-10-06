import InitE.BackendStages.Metadata.Data361
import InitE.BackendStages.Filtered361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis361_eq : ffiLines Filtered361.lines = localFfis361 := by
  with_unfolding_all rfl
theorem ffiStep361 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis361) : LabToTarget.findFfiNames (Filtered361 :: rest) = suffixFfis361 := by
  rw [findFfiNames_section, localFfis361_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep361
end InitE.BackendStages.Metadata
