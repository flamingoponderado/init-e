import InitE.BackendStages.Metadata.Data852
import InitE.BackendStages.Filtered852
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis852_eq : ffiLines Filtered852.lines = localFfis852 := by
  with_unfolding_all rfl
theorem ffiStep852 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis852) : LabToTarget.findFfiNames (Filtered852 :: rest) = suffixFfis852 := by
  rw [findFfiNames_section, localFfis852_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep852
end InitE.BackendStages.Metadata
