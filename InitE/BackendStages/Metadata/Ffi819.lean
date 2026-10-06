import InitE.BackendStages.Metadata.Data819
import InitE.BackendStages.Filtered819
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis819_eq : ffiLines Filtered819.lines = localFfis819 := by
  with_unfolding_all rfl
theorem ffiStep819 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis819) : LabToTarget.findFfiNames (Filtered819 :: rest) = suffixFfis819 := by
  rw [findFfiNames_section, localFfis819_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep819
end InitE.BackendStages.Metadata
