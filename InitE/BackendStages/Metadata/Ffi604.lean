import InitE.BackendStages.Metadata.Data604
import InitE.BackendStages.Filtered604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis604_eq : ffiLines Filtered604.lines = localFfis604 := by
  with_unfolding_all rfl
theorem ffiStep604 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis604) : LabToTarget.findFfiNames (Filtered604 :: rest) = suffixFfis604 := by
  rw [findFfiNames_section, localFfis604_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep604
end InitE.BackendStages.Metadata
