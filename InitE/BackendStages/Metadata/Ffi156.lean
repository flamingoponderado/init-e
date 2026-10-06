import InitE.BackendStages.Metadata.Data156
import InitE.BackendStages.Filtered156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis156_eq : ffiLines Filtered156.lines = localFfis156 := by
  with_unfolding_all rfl
theorem ffiStep156 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis156) : LabToTarget.findFfiNames (Filtered156 :: rest) = suffixFfis156 := by
  rw [findFfiNames_section, localFfis156_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep156
end InitE.BackendStages.Metadata
