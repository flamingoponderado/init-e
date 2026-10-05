import InitE.BackendStages.Metadata.Data286
import InitE.BackendStages.Filtered286
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis286_eq : ffiLines Filtered286.lines = localFfis286 := by
  with_unfolding_all rfl
theorem ffiStep286 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis286) : LabToTarget.findFfiNames (Filtered286 :: rest) = suffixFfis286 := by
  rw [findFfiNames_section, localFfis286_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep286
end InitE.BackendStages.Metadata
