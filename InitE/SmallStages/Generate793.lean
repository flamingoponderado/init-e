import Tools.GenSmallStages
import InitE.SmallStages.Oracles793
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 793 InitE.WordStages.source793.2.1 InitE.WordStages.source793.2.2 InitE.SmallStages.Oracles793.oracle793
