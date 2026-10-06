import InitE.BackendStages.Metadata.Data791
import InitE.BackendStages.Filtered791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis791_eq : ffiLines Filtered791.lines = localFfis791 := by
  with_unfolding_all rfl
theorem ffiStep791 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis791) : LabToTarget.findFfiNames (Filtered791 :: rest) = suffixFfis791 := by
  rw [findFfiNames_section, localFfis791_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep791
end InitE.BackendStages.Metadata
