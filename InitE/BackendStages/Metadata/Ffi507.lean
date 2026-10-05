import InitE.BackendStages.Metadata.Data507
import InitE.BackendStages.Filtered507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis507_eq : ffiLines Filtered507.lines = localFfis507 := by
  with_unfolding_all rfl
theorem ffiStep507 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis507) : LabToTarget.findFfiNames (Filtered507 :: rest) = suffixFfis507 := by
  rw [findFfiNames_section, localFfis507_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep507
end InitE.BackendStages.Metadata
