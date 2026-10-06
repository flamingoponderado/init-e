import Tools.GenSmallStages
import InitE.SmallStages.Oracles540
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 540 InitE.WordStages.source540.2.1 InitE.WordStages.source540.2.2 InitE.SmallStages.Oracles540.oracle540
