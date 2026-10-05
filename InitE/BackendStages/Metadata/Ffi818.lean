import InitE.BackendStages.Metadata.Data818
import InitE.BackendStages.Filtered818
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis818_eq : ffiLines Filtered818.lines = localFfis818 := by
  with_unfolding_all rfl
theorem ffiStep818 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis818) : LabToTarget.findFfiNames (Filtered818 :: rest) = suffixFfis818 := by
  rw [findFfiNames_section, localFfis818_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep818
end InitE.BackendStages.Metadata
