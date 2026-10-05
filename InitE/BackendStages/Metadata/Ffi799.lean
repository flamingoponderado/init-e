import InitE.BackendStages.Metadata.Data799
import InitE.BackendStages.Filtered799
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis799_eq : ffiLines Filtered799.lines = localFfis799 := by
  with_unfolding_all rfl
theorem ffiStep799 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis799) : LabToTarget.findFfiNames (Filtered799 :: rest) = suffixFfis799 := by
  rw [findFfiNames_section, localFfis799_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep799
end InitE.BackendStages.Metadata
