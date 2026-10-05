import InitE.BackendStages.Metadata.Data861
import InitE.BackendStages.Filtered861
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis861_eq : ffiLines Filtered861.lines = localFfis861 := by
  with_unfolding_all rfl
theorem ffiStep861 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis861) : LabToTarget.findFfiNames (Filtered861 :: rest) = suffixFfis861 := by
  rw [findFfiNames_section, localFfis861_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep861
end InitE.BackendStages.Metadata
