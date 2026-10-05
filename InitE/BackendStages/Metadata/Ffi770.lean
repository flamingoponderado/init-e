import InitE.BackendStages.Metadata.Data770
import InitE.BackendStages.Filtered770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis770_eq : ffiLines Filtered770.lines = localFfis770 := by
  with_unfolding_all rfl
theorem ffiStep770 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis770) : LabToTarget.findFfiNames (Filtered770 :: rest) = suffixFfis770 := by
  rw [findFfiNames_section, localFfis770_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep770
end InitE.BackendStages.Metadata
