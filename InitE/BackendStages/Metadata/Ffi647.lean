import InitE.BackendStages.Metadata.Data647
import InitE.BackendStages.Filtered647
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis647_eq : ffiLines Filtered647.lines = localFfis647 := by
  with_unfolding_all rfl
theorem ffiStep647 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis647) : LabToTarget.findFfiNames (Filtered647 :: rest) = suffixFfis647 := by
  rw [findFfiNames_section, localFfis647_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep647
end InitE.BackendStages.Metadata
