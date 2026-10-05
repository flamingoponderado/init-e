import InitE.BackendStages.Metadata.Data718
import InitE.BackendStages.Filtered718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis718_eq : ffiLines Filtered718.lines = localFfis718 := by
  with_unfolding_all rfl
theorem ffiStep718 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis718) : LabToTarget.findFfiNames (Filtered718 :: rest) = suffixFfis718 := by
  rw [findFfiNames_section, localFfis718_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep718
end InitE.BackendStages.Metadata
