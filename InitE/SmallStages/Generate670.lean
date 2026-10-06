import Tools.GenSmallStages
import InitE.SmallStages.Oracles670
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 670 InitE.WordStages.source670.2.1 InitE.WordStages.source670.2.2 InitE.SmallStages.Oracles670.oracle670
