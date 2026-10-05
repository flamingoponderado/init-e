import InitE.BackendStages.Metadata.Data424
import InitE.BackendStages.Filtered424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis424_eq : ffiLines Filtered424.lines = localFfis424 := by
  with_unfolding_all rfl
theorem ffiStep424 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis424) : LabToTarget.findFfiNames (Filtered424 :: rest) = suffixFfis424 := by
  rw [findFfiNames_section, localFfis424_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep424
end InitE.BackendStages.Metadata
