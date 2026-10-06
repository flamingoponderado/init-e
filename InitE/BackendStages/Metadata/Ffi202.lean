import InitE.BackendStages.Metadata.Data202
import InitE.BackendStages.Filtered202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis202_eq : ffiLines Filtered202.lines = localFfis202 := by
  with_unfolding_all rfl
theorem ffiStep202 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis202) : LabToTarget.findFfiNames (Filtered202 :: rest) = suffixFfis202 := by
  rw [findFfiNames_section, localFfis202_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep202
end InitE.BackendStages.Metadata
