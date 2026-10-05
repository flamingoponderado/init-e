import InitE.BackendStages.Metadata.Data720
import InitE.BackendStages.Filtered720
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis720_eq : ffiLines Filtered720.lines = localFfis720 := by
  with_unfolding_all rfl
theorem ffiStep720 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis720) : LabToTarget.findFfiNames (Filtered720 :: rest) = suffixFfis720 := by
  rw [findFfiNames_section, localFfis720_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep720
end InitE.BackendStages.Metadata
