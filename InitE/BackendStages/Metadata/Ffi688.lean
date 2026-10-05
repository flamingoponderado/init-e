import InitE.BackendStages.Metadata.Data688
import InitE.BackendStages.Filtered688
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis688_eq : ffiLines Filtered688.lines = localFfis688 := by
  with_unfolding_all rfl
theorem ffiStep688 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis688) : LabToTarget.findFfiNames (Filtered688 :: rest) = suffixFfis688 := by
  rw [findFfiNames_section, localFfis688_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep688
end InitE.BackendStages.Metadata
