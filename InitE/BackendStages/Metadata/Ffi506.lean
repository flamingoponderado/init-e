import InitE.BackendStages.Metadata.Data506
import InitE.BackendStages.Filtered506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis506_eq : ffiLines Filtered506.lines = localFfis506 := by
  with_unfolding_all rfl
theorem ffiStep506 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis506) : LabToTarget.findFfiNames (Filtered506 :: rest) = suffixFfis506 := by
  rw [findFfiNames_section, localFfis506_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep506
end InitE.BackendStages.Metadata
