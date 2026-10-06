import InitE.BackendStages.Metadata.Data181
import InitE.BackendStages.Filtered181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis181_eq : ffiLines Filtered181.lines = localFfis181 := by
  with_unfolding_all rfl
theorem ffiStep181 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis181) : LabToTarget.findFfiNames (Filtered181 :: rest) = suffixFfis181 := by
  rw [findFfiNames_section, localFfis181_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep181
end InitE.BackendStages.Metadata
