import InitE.BackendStages.Metadata.Data400
import InitE.BackendStages.Filtered400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis400_eq : ffiLines Filtered400.lines = localFfis400 := by
  with_unfolding_all rfl
theorem ffiStep400 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis400) : LabToTarget.findFfiNames (Filtered400 :: rest) = suffixFfis400 := by
  rw [findFfiNames_section, localFfis400_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep400
end InitE.BackendStages.Metadata
