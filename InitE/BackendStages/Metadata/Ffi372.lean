import InitE.BackendStages.Metadata.Data372
import InitE.BackendStages.Filtered372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis372_eq : ffiLines Filtered372.lines = localFfis372 := by
  with_unfolding_all rfl
theorem ffiStep372 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis372) : LabToTarget.findFfiNames (Filtered372 :: rest) = suffixFfis372 := by
  rw [findFfiNames_section, localFfis372_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep372
end InitE.BackendStages.Metadata
