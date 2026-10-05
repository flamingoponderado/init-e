import InitE.BackendStages.Metadata.Data308
import InitE.BackendStages.Filtered308
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis308_eq : ffiLines Filtered308.lines = localFfis308 := by
  with_unfolding_all rfl
theorem ffiStep308 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis308) : LabToTarget.findFfiNames (Filtered308 :: rest) = suffixFfis308 := by
  rw [findFfiNames_section, localFfis308_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep308
end InitE.BackendStages.Metadata
