import InitE.BackendStages.Metadata.Data169
import InitE.BackendStages.Filtered169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis169_eq : ffiLines Filtered169.lines = localFfis169 := by
  with_unfolding_all rfl
theorem ffiStep169 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis169) : LabToTarget.findFfiNames (Filtered169 :: rest) = suffixFfis169 := by
  rw [findFfiNames_section, localFfis169_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep169
end InitE.BackendStages.Metadata
