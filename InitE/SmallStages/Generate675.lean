import Tools.GenSmallStages
import InitE.SmallStages.Oracles675
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 675 InitE.WordStages.source675.2.1 InitE.WordStages.source675.2.2 InitE.SmallStages.Oracles675.oracle675
